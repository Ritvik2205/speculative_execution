.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 21
or bl, dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or al, sil
or cx, -42
and ecx, -104
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 4
or dl, 85
xor dil, 81
and al, cl
test eax, -409834435
test sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
