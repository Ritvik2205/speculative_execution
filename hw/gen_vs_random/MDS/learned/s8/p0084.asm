.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and rsi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
xor rsi, -117
or dl, dil
or cl, dl
and dil, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
btr bx, dx
and di, 91
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
or ax, -20176
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or rax, -689609688
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
