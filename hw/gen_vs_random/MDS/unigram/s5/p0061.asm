.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 73
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
btr rbx, 63
and cl, -23 # instrumentation
cmovno esi, ecx
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
test bl, bl
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
jmp .bb_0.1
.bb_0.1:
and rax, rax
xor dl, dl
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rcx
test eax, 424329527
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
or rdx, rax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
