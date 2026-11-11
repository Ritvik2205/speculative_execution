.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 2
lea rdx, qword ptr [rax + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 50
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, dl
cmp al, 4
add dil, 45 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
add bl, -108 # instrumentation
sbb bl, 71
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 76
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
add bl, -41 # instrumentation
xchg dl, bl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
