.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
setp cl
or cl, dl
lea rbx, qword ptr [rbx + rsi + 83]
or esi, edi
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
jmp .bb_0.1
.bb_0.1:
imul ax
and rcx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
sub bl, -96
xchg al, al
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
test al, -32
add cl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
