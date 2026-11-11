.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 36
add bl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 61
sbb edi, edi
mov al, -102
test bl, 26
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
movsx eax, al
adc esi, ebx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 8
imul ax, si
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
