.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
test dl, -37
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
btr ebx, 55
imul di, cx
add bl, 4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], si
lea cx, qword ptr [rdx]
cmovb ax, cx
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
cmovbe si, si
and rdx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdx]
sub cl, 86
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
