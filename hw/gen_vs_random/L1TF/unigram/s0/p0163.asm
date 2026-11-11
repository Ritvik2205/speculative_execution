.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, 64
cmp dil, bl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rax, rdi
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
setno dil
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
imul rdi, rsi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
sub cx, 93
btc dx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
