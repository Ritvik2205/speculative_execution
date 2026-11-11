.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], esi
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
and edx, ecx
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], cx
lea esi, qword ptr [rdi + rsi + 45859]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rbx]
add dl, 120 # instrumentation
adc cl, 66
or rdx, 11
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
