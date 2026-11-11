.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 103 # instrumentation
cmovno ebx, edx
adc ax, 24404
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
movsx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -57
xchg sil, al
xchg edx, eax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea dx, qword ptr [rbx + rdx]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
add cl, 113 # instrumentation
setnb cl
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
not rax
setnp bl
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
