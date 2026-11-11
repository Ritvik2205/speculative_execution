.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
xor al, 38
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
imul bx, di, -32
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
btr ebx, eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
sbb rbx, -117
test dl, 84
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
