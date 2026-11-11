.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -61 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 93
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
xor rsi, 67
jns .bb_0.1
jmp .exit_0
.bb_0.1:
movsx rsi, dx
add dl, -127 # instrumentation
setp cl
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
movzx eax, dl
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
add al, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 83
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
