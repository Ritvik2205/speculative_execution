.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
lea di, qword ptr [rdi + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
sbb rax, -1477844571
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
btc ebx, 74
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
btr dx, si
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
mov dx, bx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
cmovnb bx, cx
sbb dl, dil
mov edx, edi
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
not cl
bt rdi, rax
sub ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
