.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
or bx, si
cmovo esi, ecx
test rbx, 63
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
or cl, -36
xor si, 80
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
jmp .bb_0.1
.bb_0.1:
and al, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
cmovnle cx, di
and cl, 34 # instrumentation
cmovno ecx, esi
btc rax, 59
test rsi, rcx
cmovs ax, cx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 67
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
