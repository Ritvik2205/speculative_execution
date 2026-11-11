.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
and dl, al
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
movsx si, dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], al
jmp .bb_0.1
.bb_0.1:
bt rsi, rbx
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
sub edi, 68
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea esi, qword ptr [rbx + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
lea edx, qword ptr [rcx + rax + 78]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
