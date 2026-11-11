.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, di, -32
xor al, 45
btr ebx, eax
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -5
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
sbb rbx, -117
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
jmp .bb_0.2
.bb_0.2:
xor rax, rdx
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
cmovnp di, bx
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
imul edx, esi, -121
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], -22
cmovs rsi, rdi
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
