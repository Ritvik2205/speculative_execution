.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
imul bx, di, -32
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
btr ebx, eax
xor al, 16
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
sbb rbx, -117
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
test dl, -37
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
