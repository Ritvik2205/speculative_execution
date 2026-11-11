.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 38
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 15
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], esi
mov eax, ebx
jmp .bb_0.1
.bb_0.1:
lea edi, qword ptr [rax]
movsx rsi, si
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdx]
add cx, 47
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
add sil, al
cmovb ax, di
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
