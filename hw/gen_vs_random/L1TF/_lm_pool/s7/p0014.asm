.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
or al, -57
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and sil, al
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and bl, dl
bts ecx, 164
and di, 36
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
