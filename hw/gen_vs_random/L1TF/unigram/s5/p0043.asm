.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, -22
add dx, dx
sub dl, 41
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], sil
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
add edx, 56
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 73
adc dil, al
btr ecx, 88
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
cmovnb ebx, edx
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
setp bl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], bx
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
