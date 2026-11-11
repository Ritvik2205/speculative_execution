.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdx, si
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 58
lea ebx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
mov bl, cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
imul ecx, esi
and rbx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rbx]
and al, dl
sbb rax, 786640702
test al, 84
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
