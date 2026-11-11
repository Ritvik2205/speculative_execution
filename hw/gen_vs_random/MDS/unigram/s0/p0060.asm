.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 61
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 7
and rsi, 14
and bl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
test cx, bx
test rdi, 68
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovnbe rbx, rdx
xor bl, bl
or esi, ebx
and bl, -56 # instrumentation
cmovnle edi, esi
bt si, 23
and ax, dx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rcx]
or al, 16
cmovp rdx, rbx
cmovb ebx, edx
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
cmovbe cx, di
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
