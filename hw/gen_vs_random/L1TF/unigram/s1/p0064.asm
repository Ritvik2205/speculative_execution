.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
xor dl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
lea rdx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdx
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
lea dx, qword ptr [rsi + rcx + 45165]
test al, -104
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 25
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
imul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
