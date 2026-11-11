.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, rdi
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 18
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
setnl dil
add si, ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 24
add al, -67 # instrumentation
setz al
lea dx, qword ptr [rax + rdi + 59]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovp edi, esi
sub cl, 32
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
cmovs rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
