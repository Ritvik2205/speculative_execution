.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
cwd
lea rdx, qword ptr [rsi]
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 39
add al, al
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
add bl, 107 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
test ax, 13879
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
or dil, dl
cmp dx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
