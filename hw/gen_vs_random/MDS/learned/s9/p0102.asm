.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 99
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
test al, cl
and dl, dil
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
bt dx, si
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
or al, -75
test eax, 298249463
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or al, -78
or dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
