.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
add dl, 100 # instrumentation
lea di, qword ptr [rdx]
sbb sil, -79
lea rdx, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
sbb dil, cl
cmovnbe edx, ecx
lea rbx, qword ptr [rbx]
add al, 66 # instrumentation
cmovnp eax, esi
and rsi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
lea esi, qword ptr [rcx + rsi + 55]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
or dl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
