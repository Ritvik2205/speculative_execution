.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -89
or dl, -89
and sil, sil
xor rax, -404206377
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or cl, bl
or dl, al
jmp .bb_0.1
.bb_0.1:
xor cl, dil
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
jmp .bb_0.3
.bb_0.3:
test al, dl
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
