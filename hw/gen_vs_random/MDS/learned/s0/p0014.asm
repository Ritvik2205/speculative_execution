.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, sil
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or al, 54
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
test dl, al
jmp .bb_0.1
.bb_0.1:
xor cl, bl
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
or sil, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or rbx, -72
and bl, bl
or eax, -696456144
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and al, bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test al, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
