.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
or bl, dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
or rax, -285849275
or ax, -4635
xor cl, sil
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 1
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
