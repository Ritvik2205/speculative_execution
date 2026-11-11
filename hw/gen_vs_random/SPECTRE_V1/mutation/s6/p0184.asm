.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
sbb ebx, 31
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
sets bl
cmovnz cx, di
sbb al, al
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 16 # instrumentation
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -40
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rsi]
movsx cx, dl
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
