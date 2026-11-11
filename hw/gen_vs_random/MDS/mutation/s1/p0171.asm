.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
cmovns esi, esi
or bl, al
or di, di
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
test rax, 1207043993
btc edx, ebx
test eax, 1287331633
not sil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and dl, 21 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmovbe ebx, ecx
test cl, -113
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
