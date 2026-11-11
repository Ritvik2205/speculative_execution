.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 75
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 6
test dil, bl
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rbx], ax
cmp rcx, rsi
cmovb rax, rdx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
or bl, 61
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rax
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 42
lea rcx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
