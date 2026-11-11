.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, 376589024
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
setnle cl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
test al, dl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
lea rbx, qword ptr [rcx + rdi + 98]
and rbx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rbx]
movzx ax, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rcx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rsi
sub ax, di
mov rbx, -8992833348021516010
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
