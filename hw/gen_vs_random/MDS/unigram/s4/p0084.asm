.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
btc bx, di
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
btr ebx, 0
and bl, bl
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
xor di, -83
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
bt edx, eax
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
