.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
neg dl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
setnle sil
sub rax, rcx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
sub al, bl
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], edi
test eax, -1812342404
or bx, 46
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], ebx
test ecx, 17
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 77
lea eax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
