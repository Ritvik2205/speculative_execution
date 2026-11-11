.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno si, ax
lea rcx, qword ptr [rdi + rsi]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
cmp cl, 57
setp cl
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
setz dl
cmp cx, 41
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
cmovnz rcx, rbx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 32
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
