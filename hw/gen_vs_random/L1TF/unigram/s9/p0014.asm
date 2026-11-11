.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rcx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
lea ax, qword ptr [rdx + rbx + 50836]
add bl, 111 # instrumentation
cmovs rbx, rbx
sbb ecx, 64
test rcx, rax
xor sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
btr edi, esi
lea rbx, qword ptr [rsi + rdx]
add al, 77 # instrumentation
sbb eax, 47
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], di
add al, -34 # instrumentation
setnp sil
btc eax, ecx
bt ecx, 1
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
