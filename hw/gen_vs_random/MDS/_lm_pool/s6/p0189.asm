.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and bl, bl
test sil, cl
or rax, -1523798580
or sil, al
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
not cl
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor rax, 459999114
or al, bl
xor al, 34
xor dx, 24
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
