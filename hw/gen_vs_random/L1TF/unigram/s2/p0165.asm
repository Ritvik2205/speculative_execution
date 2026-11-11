.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
lea ax, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
lea rdi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sub dl, al
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
xor cl, 89
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
add cl, 89 # instrumentation
adc sil, al
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
btr rax, rdx
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
sub eax, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
