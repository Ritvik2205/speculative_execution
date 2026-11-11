.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
and di, 91
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
or edx, edx
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
test rdx, 38
cmovno rdx, rcx
test al, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
or esi, -110
cmovnbe rbx, rdi
xor bl, al
cmovle cx, ax
and bl, 46 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 27
xor di, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
