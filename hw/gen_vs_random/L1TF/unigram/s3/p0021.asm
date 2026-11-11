.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, ax, 82
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
dec bl
cmp al, 38
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 53
xchg ax, di
setle sil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 65
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and al, dl
lea cx, qword ptr [rdi + rbx + 11]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
xor sil, 69
and rsi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
