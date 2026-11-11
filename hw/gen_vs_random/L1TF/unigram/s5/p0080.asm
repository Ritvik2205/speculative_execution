.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
cmovs bx, ax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
not edi
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 94
and rdi, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdi]
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
