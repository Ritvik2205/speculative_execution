.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
xor rcx, 74
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
add dl, -97 # instrumentation
sets cl
or ax, 18658
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], 33
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
cmp al, dl
imul edi, edi, 32
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
cmp al, 62
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
