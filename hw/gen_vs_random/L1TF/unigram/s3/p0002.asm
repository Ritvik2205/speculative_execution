.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
sbb dl, dl
cmovle rdx, rbx
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
cmp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
adc dl, sil
mov ax, 96
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 90
cmovz rcx, rax
mul rcx
seto cl
xor di, 61
add cl, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
