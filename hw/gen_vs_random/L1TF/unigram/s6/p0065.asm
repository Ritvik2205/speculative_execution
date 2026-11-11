.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb sil
cmp dil, 57
lea cx, qword ptr [rcx + rbx]
or rdx, 1 # instrumentation
add al, -82 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
lea esi, qword ptr [rax + rbx + 84]
sbb rbx, -117
add dl, 109 # instrumentation
cmovnb rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
and rdx, 88
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 77
add cl, 69 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
