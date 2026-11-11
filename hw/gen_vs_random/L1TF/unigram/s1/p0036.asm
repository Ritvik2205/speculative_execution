.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
xor bl, -5
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
lea eax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
setno sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
xchg ebx, eax
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi], 72
setno al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], bl
add bl, -54 # instrumentation
setz al
test rax, rbx
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
