.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 98 # instrumentation
inc bl
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
add eax, 109
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
inc rdi
and rdx, 88
cmp cx, 8
cmp dil, 33
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 92
setl dl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 12
add sil, 12 # instrumentation
lea rcx, qword ptr [rdi + rsi]
xchg rcx, rdx
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
