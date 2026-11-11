.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ebx, ebx
bt ax, dx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
cmovp cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
cmovbe rdx, rcx
bts rbx, 75
bt rdx, rbx
bts eax, edx
and dl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
and dx, 32
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 55
and cl, -109 # instrumentation
not rdi
cmovb cx, si
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 3
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
