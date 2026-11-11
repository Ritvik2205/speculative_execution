.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
lea rdi, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
lea esi, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 42
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 66
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
not word ptr [r14 + rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
sbb rdx, 90
or sil, -27
lea edi, qword ptr [rcx + rdx + 59]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rsi
add dl, 20 # instrumentation
cmovnbe rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
