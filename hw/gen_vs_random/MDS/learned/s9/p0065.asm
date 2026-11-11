.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
or eax, ebx
or al, cl
or cl, dl
or al, sil
jmp .bb_0.1
.bb_0.1:
btr bx, dx
and dl, dl
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or dil, sil
xor rax, -270810088
xor al, -19
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdi
and bl, 68
or sil, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
