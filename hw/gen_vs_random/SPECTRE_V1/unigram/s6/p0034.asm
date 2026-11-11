.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 84
add cl, 72 # instrumentation
cmovnl di, cx
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
lea di, qword ptr [rdi + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 13 # instrumentation
setns sil
not edx
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
add cl, 83 # instrumentation
setbe dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
lea eax, qword ptr [rsi + rsi]
cmp edx, 44
and rsi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rsi]
cmp bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
