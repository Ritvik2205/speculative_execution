.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
or sil, -78
bt cx, di
jmp .bb_0.1
.bb_0.1:
or al, 74
and al, dl
and cl, cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor rdx, -59
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
or dl, sil
or bl, dl
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
