.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bt edx, 66
add al, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 81
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
mov sil, bl
jmp .bb_0.1
.bb_0.1:
sub rdi, 94
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edx
or esi, edx
add al, 31
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 14
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
