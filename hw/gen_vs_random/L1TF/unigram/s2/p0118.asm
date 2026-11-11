.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
cmovnbe cx, cx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and bl, dil
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
mov edx, ebx
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and esi, eax
mov dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
