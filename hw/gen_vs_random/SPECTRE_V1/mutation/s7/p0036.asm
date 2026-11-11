.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 112 # instrumentation
sbb ebx, 31
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
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
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
movsx ecx, cx
xchg dl, dl
adc eax, 56
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -97
lea ax, qword ptr [rbx + rdx + 32397]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
and sil, 52
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
