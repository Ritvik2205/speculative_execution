.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
or al, 24
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
or al, -24
and eax, 366961170
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
test al, 66
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
xor ax, -12492
or cl, 119
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
xor al, 55
and edx, -44
test eax, 1838539683
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
