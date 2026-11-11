.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, 25
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], dx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
not dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
lea rdx, qword ptr [rax + rdi]
lea bx, qword ptr [rdi + rsi + 42]
not ecx
btr dx, bx
add bl, -53 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
