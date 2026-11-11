.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
bt rax, 91
add bl, 68
not esi
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
test al, al
jmp .bb_0.1
.bb_0.1:
add cl, -66 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
lea ax, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
sbb dil, 68
or esi, ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rsi, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
