.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test al, dl
and dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
xor al, 9
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
