.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 116 # instrumentation
cmovbe rdi, rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
movsx si, dl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
xchg rdx, rcx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 68
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 74
add al, -106
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 35
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
bts dx, cx
cmovz rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
