.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 232
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
movzx di, bl
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
add al, -113 # instrumentation
mov rbx, 15
cwde
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
movzx rdi, sil
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
or ebx, ecx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
btc edi, 62
lea rsi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
