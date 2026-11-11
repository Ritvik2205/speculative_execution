.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -56 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], eax
sub rdx, rsi
dec dx
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rcx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 95
lea ecx, qword ptr [rcx + rcx + 33]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setnle dil
xchg rbx, rax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
add al, -62 # instrumentation
setnb dil
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
